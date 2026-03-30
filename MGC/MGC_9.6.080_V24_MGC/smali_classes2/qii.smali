.class final Lqii;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqin;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FFF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqii;->a:Ljava/lang/String;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lqii;->c:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lqii;->b:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    iput p4, p0, Lqii;->d:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lqjn;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    :goto_2
    invoke-static {p1, v0, v1, p0}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    iget v1, p0, Lqii;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Lqii;->b:F

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget p0, p0, Lqii;->d:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lqii;->a:Ljava/lang/String;

    nop

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

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_9
    rem-int v0, v0, v1

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

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
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

    nop

    :goto_d
    const v1, 0xb

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

    :goto_e
    goto/32 :goto_b

    nop

    nop

    :goto_f
    invoke-virtual {p1, v0}, Lqjn;->b(Ljava/lang/String;)I

    move-result p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method
