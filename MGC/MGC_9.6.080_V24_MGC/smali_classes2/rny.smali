.class public final Lrny;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# static fields
.field public static final a:Lrny;

.field public static final b:Lrny;

.field public static final c:Lrny;


# instance fields
.field private final synthetic d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lrny;->b:Lrny;

    nop

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

    :goto_1
    invoke-direct {v0, v1}, Lrny;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Lrny;-><init>(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x19

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    sput-object v0, Lrny;->a:Lrny;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    new-instance v0, Lrny;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lrny;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    sput-object v0, Lrny;->c:Lrny;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_d
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_11
    invoke-direct {v0, v1}, Lrny;-><init>(I)V

    goto/32 :goto_6

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Lrny;

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

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method

.method public constructor <init>(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput p1, p0, Lrny;->d:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lrny;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2
    new-instance p0, Ldme;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3
    return-object v1

    nop

    nop

    :goto_4
    :try_start_0
    const-class p0, Landroid/view/ViewOverlay;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "getOverlayView"

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    nop

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x20

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, v1, v0}, Lnhl;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p0, Lnhl;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "Can\'t access ViewOverlay, run \"adb shell settings put global hidden_api_policy 0\" to access more view properties, see https://developer.android.com/guide/app-compatibility/restrictions-non-sdk-interfaces#how_can_i_enable_access_to_non-sdk_interfaces"

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_d
    goto/32 :goto_1c

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_10
    const/4 v0, 0x1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    if-ne p0, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object v1, p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_1a

    nop

    nop

    :catch_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x13

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_17
    if-nez p0, :cond_2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_18
    sget-object p0, Lrck;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_19
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_0

    nop

    nop

    :goto_1d
    invoke-direct {p0}, Ldme;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop
.end method
