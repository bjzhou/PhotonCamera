.class public final Landroidx/compose/ui/platform/TestTagElement;
.super Lcui;
.source "PG"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Landroidx/compose/ui/platform/TestTagElement;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lcui;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static JhqPIWwwTtEMCOUE(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static mZIoYyqHZrwoVJRK(Ljava/lang/String;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Lbzy;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ldco;

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
    return-object v0

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Ldco;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Landroidx/compose/ui/platform/TestTagElement;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic b(Lbzy;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    check-cast p1, Ldco;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p0, p1, Ldco;->a:Ljava/lang/String;

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

    :goto_3
    iget-object p0, p0, Landroidx/compose/ui/platform/TestTagElement;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    instance-of v0, p1, Landroidx/compose/ui/platform/TestTagElement;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    check-cast p1, Landroidx/compose/ui/platform/TestTagElement;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, p1}, Landroidx/compose/ui/platform/TestTagElement;->JhqPIWwwTtEMCOUE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    if-eq p0, p1, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    iget-object p1, p1, Landroidx/compose/ui/platform/TestTagElement;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    iget-object p0, p0, Landroidx/compose/ui/platform/TestTagElement;->a:Ljava/lang/String;

    nop

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

    :goto_8
    const/4 p0, 0x1

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

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    :goto_d
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    iget-object p0, p0, Landroidx/compose/ui/platform/TestTagElement;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Landroidx/compose/ui/platform/TestTagElement;->mZIoYyqHZrwoVJRK(Ljava/lang/String;)I

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
