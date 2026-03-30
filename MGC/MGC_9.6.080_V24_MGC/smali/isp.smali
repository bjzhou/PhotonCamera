.class public final Lisp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrtm;


# instance fields
.field private final a:Lrss;

.field private final b:Lnne;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:Limf;

.field private final g:Lkut;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m(I)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lkut;->a()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lisp;->g:Lkut;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

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
.end method

.method public constructor <init>(Lijl;Lrss;Lnne;Limf;Lkut;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iget p1, p1, Lijl;->d:I

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

    :goto_1
    iget p2, p1, Lijl;->a:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    sub-int p3, p2, p3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lisp;->a:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    iput-object p5, p0, Lisp;->g:Lkut;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    iput p3, p0, Lisp;->c:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    iput p2, p0, Lisp;->d:I

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    sub-int/2addr p2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    iput-object p4, p0, Lisp;->f:Limf;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    iget p3, p1, Lijl;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    iput p2, p0, Lisp;->e:I

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

    :goto_d
    iput-object p3, p0, Lisp;->b:Lnne;

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
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lisp;->b()Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public final b()Ljava/lang/Integer;
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Lisp;->33f5b80483094659737b73d90f80a8a4m(I)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Lisp;->33f5b80483094659737b73d90f80a8a4m(I)I

    move-result p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lisp;->a:Lrss;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, v0}, Lisp;->33f5b80483094659737b73d90f80a8a4m(I)I

    move-result p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lisp;->b:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_f
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    :goto_12
    iget v0, p0, Lisp;->c:I

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_13
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2c

    nop

    :goto_14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    iget v0, p0, Lisp;->c:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2a

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Lkhw;->a()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lisp;->a:Lrss;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v0, Lkhw;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

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

    :goto_23
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

    :goto_24
    check-cast v0, Lkhw;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v0}, Ljub;->a(Lnne;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_28
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Lisp;->f:Limf;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Lisp;->a:Lrss;

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

    nop

    :goto_2b
    invoke-virtual {v0}, Limf;->l()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2c
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_e

    nop

    nop

    :goto_2e
    if-eq v0, v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_5
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {p0, v0}, Lisp;->33f5b80483094659737b73d90f80a8a4m(I)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget p0, p0, Lisp;->e:I

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

    :goto_31
    return-object p0

    nop

    :goto_32
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_33
    iget v0, p0, Lisp;->d:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_34
    iget v0, p0, Lisp;->e:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0}, Lkhw;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop
.end method
