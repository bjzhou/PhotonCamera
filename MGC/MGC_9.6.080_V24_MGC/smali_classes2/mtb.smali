.class public final Lmtb;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Landroid/graphics/Bitmap;


# instance fields
.field public final b:Landroid/graphics/Bitmap;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lmtb;->a:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    const v0, 0x20

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

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
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lmtb;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Lmtb;->b:Landroid/graphics/Bitmap;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lmtb;->b:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_4
    const/4 p0, 0x0

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

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Z
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lmtb;->a:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eq p0, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    :goto_7
    iget-object p0, p0, Lmtb;->b:Landroid/graphics/Bitmap;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
