.class public final Larh;
.super Lato;
.source "PG"

# interfaces
.implements Lasf;


# instance fields
.field public final a:Lawk;


# direct methods
.method public constructor <init>(Lubk;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object v0, p0, Larh;->a:Lawk;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lawk;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lato;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Lawk;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, p0}, Larh;->LzRmZpDODjmMvMBl(Lubk;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static AhShZhXXHCgNsaTX(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Laog;->a(Ljava/lang/String;)V

    goto/32 :goto_1

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

    nop
.end method

.method public static LzRmZpDODjmMvMBl(Lubk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Lubk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static MiYuUNMSLoTWaTOG(Lbtg;Ljava/lang/Object;)V
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
    invoke-virtual {p0, p1}, Lbtg;->n(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(ILubk;Lubq;)V
    .locals 1

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    new-instance p2, Latc;

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    :goto_3
    const-string p2, "size should be >=0"

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

    :goto_4
    iget-object p0, p0, Lawk;->a:Lbtg;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p2}, Larh;->AhShZhXXHCgNsaTX(Ljava/lang/String;)V

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget p3, p0, Lawk;->b:I

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    if-ltz p1, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_b
    invoke-direct {v0, p2, p3}, Larg;-><init>(Lubk;Lubq;)V

    goto/32 :goto_a

    nop

    nop

    :goto_c
    invoke-direct {p2, p3, p1, v0}, Latc;-><init>(IILjava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    new-instance v0, Larg;

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

    :goto_e
    iput p3, p0, Lawk;->b:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    add-int/2addr p3, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    iget-object p0, p0, Larh;->a:Lawk;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0, p2}, Larh;->MiYuUNMSLoTWaTOG(Lbtg;Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget p3, p0, Lawk;->b:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method
