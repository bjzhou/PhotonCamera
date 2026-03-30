.class public final enum Landroid/support/v8/renderscript/Allocation$MipmapControl;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Landroid/support/v8/renderscript/Allocation$MipmapControl;

.field public static final enum MIPMAP_FULL:Landroid/support/v8/renderscript/Allocation$MipmapControl;

.field public static final enum MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

.field public static final enum MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/support/v8/renderscript/Allocation$MipmapControl;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v1, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x16

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v4, 0x2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    const-string v2, "MIPMAP_FULL"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sput-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v3, "MIPMAP_ON_SYNC_TO_TEXTURE"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1e

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    filled-new-array {v0, v1, v2}, [Landroid/support/v8/renderscript/Allocation$MipmapControl;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sput-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->$VALUES:[Landroid/support/v8/renderscript/Allocation$MipmapControl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v1, "MIPMAP_NONE"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_c
    new-instance v2, Landroid/support/v8/renderscript/Allocation$MipmapControl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1, v2, v2}, Landroid/support/v8/renderscript/Allocation$MipmapControl;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sput-object v2, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v1, Landroid/support/v8/renderscript/Allocation$MipmapControl;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v1, v2, v3, v3}, Landroid/support/v8/renderscript/Allocation$MipmapControl;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_0

    nop

    nop

    :goto_11
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_13
    const/4 v3, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_15
    invoke-direct {v2, v3, v4, v4}, Landroid/support/v8/renderscript/Allocation$MipmapControl;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    :goto_1a
    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->mID:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static KwvyaAQRQnrWnASv(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static ROysipwmdXRbMlFW([Landroid/support/v8/renderscript/Allocation$MipmapControl;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, [Landroid/support/v8/renderscript/Allocation$MipmapControl;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v8/renderscript/Allocation$MipmapControl;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p0}, Landroid/support/v8/renderscript/Allocation$MipmapControl;->KwvyaAQRQnrWnASv(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    const-class v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Landroid/support/v8/renderscript/Allocation$MipmapControl;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static values()[Landroid/support/v8/renderscript/Allocation$MipmapControl;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->$VALUES:[Landroid/support/v8/renderscript/Allocation$MipmapControl;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation$MipmapControl;->ROysipwmdXRbMlFW([Landroid/support/v8/renderscript/Allocation$MipmapControl;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    :goto_3
    check-cast v0, [Landroid/support/v8/renderscript/Allocation$MipmapControl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method
