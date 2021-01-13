# EconomyMod

print("Initializing 'EconomyMod-TFC-0.1'...");

# Продажа предметов
recipes.remove(<economy_mod:sell_shop:*>);
# ----------

# Скупка предметов
recipes.remove(<economy_mod:buy_shop:*>);
# ----------

# Обмен предметов
recipes.remove(<economy_mod:barter_shop:*>);
# ----------


# Ключ
recipes.remove(<economy_mod:wrench>);
print("Initialized 'EconomyMod-TFC-server-0.1'");