import requests
import json
import time

BASE_URL = "https://www.filmtypes.com"

def get_film_list():
    print("Fetching film list from payload...")
    # 获取主页 payload 以获取所有胶卷列表
    # 注意：这里的 URL 可能需要微调，Nuxt 3 的 payload 通常在页面路径下
    response = requests.get(f"{BASE_URL}/films/_payload.json")
    try:
        data = response.json()
        # Nuxt payload 是一个数组，需要根据索引找数据
        # 简单起见，我们还是从 HTML 获取 ID 列表，然后爬取每个胶卷的 payload
        return ["adox-cms-20-ii", "adox-scala-160", "adox-silvermax", "agfa-apx-100", "agfa-apx-400", 
                "agfa-vista-plus-200", "agfa-vista-plus-400", "cinestill-800t", "fomapan-100-classic", 
                "fomapan-200-creative", "fomapan-400-action", "fuji-c200", "fuji-neopan-400cn", 
                "fuji-neopan-acros-100", "fuji-pro-400h", "fuji-provia-100f", "fuji-superia-200", 
                "fuji-superia-x-tra-400", "fuji-superia-x-tra-800", "fuji-velvia-100", "fuji-velvia-50", 
                "fujifilm-400", "ilford-delta-100", "ilford-delta-3200", "ilford-delta-400", "ilford-fp4-plus", 
                "ilford-hp5-plus", "ilford-pan-100", "ilford-pan-400", "ilford-pan-f-plus", 
                "ilford-sfx-200", "ilford-xp2-super", "kentmere-100", "kentmere-400", 
                "kodak-colorplus-200", "kodak-ektachrome-e100", "kodak-ektar-100", "kodak-gold-200", 
                "kodak-portra-160", "kodak-portra-400", "kodak-portra-800", "kodak-proimage-100", 
                "kodak-t-max-100", "kodak-t-max-400", "kodak-t-max-p3200", "kodak-tri-x-400", 
                "kodak-ultramax-400", "kodak-vision3-50d", "kodak-vision3-200t", "kodak-vision3-250d", 
                "kodak-vision3-500t", "lomochrome-purple-xr", "lomography-cn-100", "lomography-cn-400", 
                "lomography-cn-800", "lomography-earl-grey", "lomography-lady-grey", "retro-pan-320-soft"]
    except:
        return []

def resolve_nuxt_value(data, val):
    if isinstance(val, int) and val < len(data):
        return data[val]
    return val

def get_film_details(film_id):
    print(f"Fetching details for {film_id}...")
    url = f"{BASE_URL}/films/{film_id}/_payload.json"
    try:
        response = requests.get(url)
        data = response.json()
        
        # 查找包含 film 数据的对象
        film_obj = None
        for item in data:
            if isinstance(item, dict) and "name" in item and "type" in item:
                film_obj = item
                break
        
        if not film_obj:
            # 如果没找到，尝试在 data[3] 这种位置找
            for i, item in enumerate(data):
                if isinstance(item, dict) and "film" in item:
                    film_ref = item["film"]
                    if isinstance(film_ref, int):
                        film_obj = data[film_ref]
                        break

        if film_obj:
            res = {
                "id": film_id,
                "name": resolve_nuxt_value(data, film_obj.get("name")),
                "type": resolve_nuxt_value(data, film_obj.get("type")),
                "iso": str(resolve_nuxt_value(data, film_obj.get("iso"))),
                "manufacturer": resolve_nuxt_value(data, film_obj.get("brand")),
                "origin": resolve_nuxt_value(data, film_obj.get("origin")),
                "grain": resolve_nuxt_value(data, film_obj.get("grain")),
                "contrast": resolve_nuxt_value(data, film_obj.get("contrast")),
                "formats": [resolve_nuxt_value(data, f) for f in resolve_nuxt_value(data, film_obj.get("otherFormats", []))],
                "bestFor": [resolve_nuxt_value(data, b) for b in resolve_nuxt_value(data, film_obj.get("useCases", []))],
            }
            
            # 罐图
            canister_id = film_id # 默认 ID
            res["canisterUrl"] = f"https://www.filmtypes.com/imgs/filmrolls/{canister_id}.jpg"
            
            # 样片
            examples = []
            photo_examples_ref = film_obj.get("photoExamples")
            if photo_examples_ref:
                photo_examples = resolve_nuxt_value(data, photo_examples_ref)
                if isinstance(photo_examples, list):
                    for p_ref in photo_examples:
                        p_obj = resolve_nuxt_value(data, p_ref)
                        if isinstance(p_obj, dict):
                            examples.append({
                                "url": resolve_nuxt_value(data, p_obj.get("url")),
                                "author": resolve_nuxt_value(data, p_obj.get("photographer"))
                            })
            res["examples"] = examples
            return res
            
    except Exception as e:
        print(f"Error parsing {film_id}: {e}")
    return None

def main():
    ids = get_film_list()
    full_data = []
    for film_id in ids:
        details = get_film_details(film_id)
        if details:
            full_data.append(details)
        time.sleep(0.2)
        
    with open('films_data.json', 'w', encoding='utf-8') as f:
        json.dump(full_data, f, ensure_ascii=False, indent=2)
    print(f"Successfully saved {len(full_data)} films.")

if __name__ == "__main__":
    main()
