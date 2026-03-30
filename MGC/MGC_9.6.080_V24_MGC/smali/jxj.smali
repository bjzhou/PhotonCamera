.class public final synthetic Ljxj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljwv;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ljxj;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Ljxj;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a(Lqiu;Lqjs;)V
    .locals 3

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "aPosition"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1
    const-string v1, "aTexCoord"

    nop

    goto/32 :goto_1e

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

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    invoke-static {v2, v1}, Lqio;->l(Lqjy;Lqjb;)Lqxk;

    move-result-object v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_19

    nop

    :goto_6
    const-string v1, "uTransform"

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_9
    check-cast p0, Ljxg;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0, p1}, Lqio;->c(Ljava/lang/String;Lqiu;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1, p2, v0}, Lqjw;->c(Lqiu;Lqjs;[F)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, p0}, Lqxk;->b(Lqjs;)Lqio;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    invoke-interface {v0}, Ljww;->e()[F

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Ljxg;->b:Lqjw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v1, v2}, Lqio;->b(Ljava/lang/String;I)V

    goto/32 :goto_1

    nop

    nop

    :goto_10
    iget-object p0, p0, Ljxj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Llky;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Ljxm;->g:Ljww;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_13
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Ljxj;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    const-string v0, "uImgTex"

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    iput-boolean v2, p0, Lqio;->i:Z

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v1, v0}, Lqio;->f(Ljava/lang/String;[F)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0, v1, v2}, Lqio;->b(Ljava/lang/String;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p0, Ljxm;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v2, p0, Ljxm;->q:Lqjy;

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

    nop

    :goto_1e
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1f
    check-cast p0, Lqjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_20
    invoke-virtual {p0, p2}, Lqio;->n(Lqjs;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_21
    iget v0, p0, Ljxj;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v0, Ljxg;->a:[F

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Ljxm;->u:Llky;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_27
    iget-object v1, p0, Ljxm;->p:Lqjb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    :goto_29
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop
.end method
