.class public abstract Lrwg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final b:Ljava/lang/Comparable;


# direct methods
.method public constructor <init>(Ljava/lang/Comparable;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lrwg;->b:Ljava/lang/Comparable;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public a(Lrwg;)I
    .locals 2

    goto/32 :goto_16

    nop

    nop

    :goto_0
    const/4 p0, -0x1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    instance-of p0, p0, Lrwd;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    :goto_7
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_8
    instance-of p1, p1, Lrwd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    if-eq p1, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, v1}, Lsay;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    invoke-static {p0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    sget-object v0, Lrwe;->a:Lrwe;

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

    nop

    :goto_12
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v1, p1, Lrwg;->b:Ljava/lang/Comparable;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    sget-object v0, Lrwc;->a:Lrwc;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    if-ne p1, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    const v0, 0x9

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lrwg;->b:Ljava/lang/Comparable;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_b

    nop

    nop

    :goto_19
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1a
    const/4 p0, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1b
    return v0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public b()Ljava/lang/Comparable;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    iget-object p0, p0, Lrwg;->b:Ljava/lang/Comparable;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public abstract c(Lrwl;)Ljava/lang/Comparable;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Lrwg;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lrwg;->a(Lrwg;)I

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop
.end method

.method public abstract d(Lrwl;)Ljava/lang/Comparable;
.end method

.method public abstract e(Ljava/lang/StringBuilder;)V
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    if-eqz p0, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x4

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

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    :catch_0
    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p1, Lrwg;

    nop

    :try_start_0
    invoke-virtual {p0, p1}, Lrwg;->a(Lrwg;)I

    move-result p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    instance-of v0, p1, Lrwg;

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

    :goto_b
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop
.end method

.method public abstract f(Ljava/lang/StringBuilder;)V
.end method

.method public abstract g(Ljava/lang/Comparable;)Z
.end method

.method public abstract h(Lrwl;)Lrwg;
.end method

.method public abstract hashCode()I
.end method

.method public abstract i(Lrwl;)Lrwg;
.end method
