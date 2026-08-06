post_patch() {
        python3 -c '
import glob, re
for filepath in glob.glob("src/**/*.cpp", recursive=True):
    with open(filepath, "r") as f:
        content = f.read()
    
    # Reemplazar apéndices de listas { ... }
    content = re.sub(
        r"([a-zA-Z0-9_.]+)\.append_range\s*\(\s*(std::vector<[^>]+>)?\s*(\{.*?\})\s*\)\s*;",
        r"\1.insert(\1.end(), \3);",
        content,
        flags=re.DOTALL
    )
    
    # Reemplazar append_range usando un bloque de ámbito aislado con llaves
    content = re.sub(
        r"([a-zA-Z0-9_.]+)\.append_range\s*\(\s*(.+?)\s*\)\s*;",
        r"{ auto _v = \2; \1.insert(\1.end(), _v.begin(), _v.end()); }",
        content
    )
    
    with open(filepath, "w") as f:
        f.write(content)
'
}