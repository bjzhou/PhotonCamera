.class public final Lnaa;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Llvo;

.field public final b:Llvm;

.field public c:Lj$/util/Optional;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Llvo;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lnaa;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lnaa;->a:Llvo;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Lnaa;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    iput-object p1, p0, Lnaa;->b:Llvm;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p1, Lmzz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    invoke-direct {p1, p0}, Lmzz;-><init>(Lnaa;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lnaa;->c:Lj$/util/Optional;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public static final b(ZF)Z
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    goto :goto_7

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-gez p0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    const/high16 p0, 0x41b00000    # 22.0f

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    cmpl-float p0, p1, p0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-ne v0, p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/high16 p0, 0x41c80000    # 25.0f

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()F
    .locals 3

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x2

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

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnaa;->c:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v1, Lmpr;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    return v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_e
    invoke-direct {v1, v2}, Lmpr;-><init>(I)V

    goto/32 :goto_5

    nop

    nop

    :goto_f
    const/4 v2, 0x3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p0, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method
