.class public Lmlc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Landroid/util/LruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v3, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v3, 0x1c5

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

    :goto_6
    new-array v1, v1, [Ljava/lang/Object;

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

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v4, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v0, Lsdb;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    aput-object v0, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sput-object v0, Lmlc;->a:Lsdb;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_12
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    const-string v0, "mlc"

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object v0, p0, Lmlc;->b:Landroid/util/LruCache;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lmlb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-direct {v0}, Lmlb;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Llxm;)Landroid/graphics/Bitmap;
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_3
    check-cast p0, Lqxk;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    check-cast p0, Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lqxk;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

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

    :goto_7
    iget-object p0, p0, Lmlc;->b:Landroid/util/LruCache;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop
.end method

.method public final b(Llxm;)Ljava/lang/Integer;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lmlc;->b:Landroid/util/LruCache;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lqxk;

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

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iget p0, p0, Lqxk;->a:I

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

    :goto_5
    return-object p0

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

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

    :goto_8
    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method
