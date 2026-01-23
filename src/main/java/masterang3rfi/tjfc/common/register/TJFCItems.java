package masterang3rfi.tjfc.common.register;

import masterang3rfi.tjfc.common.items.TJFCMetal;
import masterang3rfi.tjfc.common.items.TJFCMold;
import masterang3rfi.tjfc.common.items.TJFCBasicItem;
import masterang3rfi.tjfc.util.Helpers;
import net.minecraft.world.item.Item;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.RegistryObject;

import java.util.EnumMap;


import static masterang3rfi.tjfc.TechjoFirmaCraft.MODID;

public final class TJFCItems {

    public static final DeferredRegister<Item> ITEMS = DeferredRegister.create(ForgeRegistries.ITEMS, MODID);
    public static final EnumMap<TJFCMold,RegistryObject<Item>> MOLDS;
    public static final EnumMap<TJFCMetal.Default, EnumMap<TJFCMetal.ItemType, RegistryObject<Item>>> METAL_ITEMS;


    static {
        METAL_ITEMS = Helpers.mapOfKeys(TJFCMetal.Default.class, (metal) -> Helpers.mapOfKeys(TJFCMetal.ItemType.class, (itemType -> itemType.has(metal)) ,(itemType -> registerBasic("metal/" + itemType.name().toLowerCase() +"/"+ metal.name().toLowerCase()))));
        MOLDS = Helpers.mapOfKeys(TJFCMold.class,(TJFCMold) -> registerBasicWithStackSize("mold/" + TJFCMold.name().toLowerCase(),1));
    }

    private static RegistryObject<Item> registerBasicWithStackSize(String name, int stackSize) {
        return ITEMS.register(name, () -> new TJFCBasicItem(new Item.Properties().stacksTo(stackSize)));
    }
    private static RegistryObject<Item> registerBasic(String name) {
        return ITEMS.register(name, () -> new TJFCBasicItem(new Item.Properties()));
    }
}
