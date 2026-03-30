.class final Lash;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# static fields
.field public static final a:Lash;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lash;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    new-instance v0, Lash;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    sput-object v0, Lash;->a:Lash;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Luci;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x2

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
.end method

.method public static HKFyVzxzvfcNQAtP(I)Ljava/lang/Integer;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static JTSofOJoBtLpsSuR([Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lrkm;->aQ([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

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
.end method

.method public static hOyDBATpQpDVOLxB(Lasr;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lasr;->f()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static lHrcovXEApyyeSqL(Lasr;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lasr;->e()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static pgmwSnlPSpzVTTCz(I)Ljava/lang/Integer;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    filled-new-array {p0, p1}, [Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p2}, Lash;->lHrcovXEApyyeSqL(Lasr;)I

    move-result p0

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

    :goto_3
    invoke-static {p1}, Lash;->pgmwSnlPSpzVTTCz(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-static {p2}, Lash;->hOyDBATpQpDVOLxB(Lasr;)I

    move-result p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Lash;->HKFyVzxzvfcNQAtP(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    check-cast p1, Lbxh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Lash;->JTSofOJoBtLpsSuR([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p2, Lasr;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
