.class public final Ljna;
.super Ljmf;
.source "PG"


# instance fields
.field public f:I

.field public g:I

.field public h:Z

.field public i:Ljava/nio/ShortBuffer;

.field public j:Ljmh;

.field public final k:Ljava/util/ArrayList;

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Ljna;->g:I

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

    :goto_1
    iput v0, p0, Ljna;->f:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Ljna;->j:Ljmh;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Ljna;->h:Z

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Ljna;->k:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    iput-boolean v0, p0, Ljna;->m:Z

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljmf;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x0

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

    :goto_d
    iput-boolean v0, p0, Ljna;->l:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b()V
    .locals 4

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Ljna;->k:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    if-nez v3, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lt v2, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    :goto_8
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_1

    nop

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Ljna;->k:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v3, Loql;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v3}, Loql;->c()V

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x17

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop
.end method

.method public final c([F)V
    .locals 5

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1
    invoke-static {v4, v0, v1, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    :goto_2
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v3}, Ljmh;->g(Ljava/nio/FloatBuffer;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Ljna;->j:Ljmh;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v3, 0x2

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_6
    const/high16 p1, 0x41100000    # 9.0f

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Ljna;->d:Ljava/util/Vector;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v3}, Ljmh;->e(Ljava/nio/FloatBuffer;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_39

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_b
    iget-object v0, p0, Ljna;->i:Ljava/nio/ShortBuffer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    invoke-virtual {p1, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2b

    nop

    :goto_f
    iget-object v3, p0, Ljna;->a:Ljava/nio/FloatBuffer;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v3, p1, v1, v0}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_12
    iget-boolean v0, p0, Ljna;->h:Z

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    iget-object p1, p0, Ljna;->i:Ljava/nio/ShortBuffer;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_1
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_16
    invoke-static {v2, p1, v1, p0}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    :goto_17
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v3, p0, Ljna;->a:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v3, p0, Ljna;->b:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Ljna;->j:Ljmh;

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Loql;->d()V

    :goto_1c
    goto/32 :goto_2f

    nop

    nop

    :goto_1d
    iget-object v0, p0, Ljna;->e:Ljmh;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1e
    iget-object p0, p0, Ljna;->i:Ljava/nio/ShortBuffer;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1f
    iget-boolean v0, p0, Ljna;->m:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_20
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_21
    iget-object v0, p0, Ljna;->j:Ljmh;

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

    :goto_22
    iget-object v0, p0, Ljna;->e:Ljmh;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_23
    const/16 v1, 0x1403

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast v0, Loql;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_25
    invoke-virtual {v0, v3}, Ljmh;->g(Ljava/nio/FloatBuffer;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_26
    iget p1, p0, Ljna;->g:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_27
    invoke-virtual {v0, p1}, Ljmh;->f([F)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0, p1}, Ljmh;->f([F)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget p1, p0, Ljna;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Ljna;->e:Ljmh;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2f
    iget-object v0, p0, Ljna;->c:Ljava/nio/ShortBuffer;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_30
    invoke-static {p1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v0, :cond_2

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_2
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_32
    if-nez v0, :cond_3

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

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v3, p0, Ljna;->c:Ljava/nio/ShortBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0}, Ljmh;->c()V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_35
    const/4 v4, 0x4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget v0, p0, Ljna;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_38
    iget-object v0, p0, Ljna;->d:Ljava/util/Vector;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_39
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v0, p0, Ljna;->e:Ljmh;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_3c
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3d
    iget-boolean v0, p0, Ljna;->l:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Ljmh;->c()V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3f
    if-lez v0, :cond_5

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2a

    nop

    :goto_40
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Ljna;->d:Ljava/util/Vector;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Loql;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Loql;->a:I

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

    :goto_5
    invoke-virtual {p0, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Ljna;->d:Ljava/util/Vector;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method
