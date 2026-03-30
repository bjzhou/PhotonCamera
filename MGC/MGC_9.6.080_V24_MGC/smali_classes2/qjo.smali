.class public final Lqjo;
.super Lqjm;
.source "PG"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iget p0, p0, Lqjo;->b:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Lqjm;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final c()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Lqjo;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
