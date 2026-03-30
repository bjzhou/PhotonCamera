.class final Lqub;
.super Lque;
.source "PG"


# instance fields
.field private final b:Z


# direct methods
.method private final 7ecc92917e9c4556cc19f457ddc41af8m()Luqi;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    goto :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lque;->e()Luqi;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean v0, p0, Lqub;->b:Z

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lqub;->a:Luqi;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Luqi;Z)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Lque;-><init>(Luqi;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-boolean p2, p0, Lqub;->b:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide p0, p0, Luqi;->c:J

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

    :goto_1
    invoke-virtual {p0, p1}, Ltkg;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lqub;->7ecc92917e9c4556cc19f457ddc41af8m()Luqi;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    return-wide p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    const-wide/16 p0, 0x3e8

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    return-wide p0

    nop

    :goto_7
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_8
    sget-object p1, Luqi;->a:Luqi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/Long;)Luqi;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    iget-object p0, p0, Lqub;->a:Luqi;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final c(Ljava/lang/Long;)Luqi;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lqub;->7ecc92917e9c4556cc19f457ddc41af8m()Luqi;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final d()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget-boolean p0, p0, Lqub;->b:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
