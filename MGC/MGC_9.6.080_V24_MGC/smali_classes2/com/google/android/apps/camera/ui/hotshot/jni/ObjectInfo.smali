.class public abstract Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static createBuilder(IFLandroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;)Lnaw;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Lnaw;->d(F)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Lnaw;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lnaw;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, v0, Lnaw;->c:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    iput p1, v0, Lnaw;->b:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    :goto_6
    const/4 p0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p0}, Lnaw;->c(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    iput-byte p0, v0, Lnaw;->f:B

    nop

    goto/32 :goto_3

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

    goto/32 :goto_c

    nop

    nop

    :goto_a
    iput-object p3, v0, Lnaw;->d:Ljava/lang/String;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    iput-object p4, v0, Lnaw;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, p0}, Lnaw;->b(F)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput p0, v0, Lnaw;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method


# virtual methods
.method public abstract bounds()Landroid/graphics/RectF;
.end method

.method public abstract id()I
.end method

.method public abstract label()Ljava/lang/String;
.end method

.method public abstract libraryDisplayName()Ljava/lang/String;
.end method

.method public abstract pan()Ljava/lang/Float;
.end method

.method public abstract roll()Ljava/lang/Float;
.end method

.method public abstract score()F
.end method

.method public abstract tilt()Ljava/lang/Float;
.end method
