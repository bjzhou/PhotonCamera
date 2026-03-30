.class public final Lapr;
.super Lbzy;
.source "PG"

# interfaces
.implements Lcss;


# instance fields
.field public a:Lubk;

.field public b:Z


# direct methods
.method public constructor <init>(Lubk;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lbzy;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x1

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

    :goto_3
    iput-object p1, p0, Lapr;->a:Lubk;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean p1, p0, Lapr;->b:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static ifvcmtTeMbKbeafT(Lcpc;IILubk;)Lcpa;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-static {p0, p1, p2, p3}, Lcpb;->b(Lcpc;IILubk;)Lcpa;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ocDZfcBJuxpROPVa(Lcoy;J)Lcpp;
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

    nop

    :goto_1
    invoke-interface {p0, p1, p2}, Lcoy;->l(J)Lcpp;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lcpc;Lcoy;J)Lcpa;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p3, p2, Lcpp;->a:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget p4, p2, Lcpp;->b:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    new-instance v0, Lapq;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-static {p1, p3, p4, v0}, Lapr;->ifvcmtTeMbKbeafT(Lcpc;IILubk;)Lcpa;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    invoke-static {p2, p3, p4}, Lapr;->ocDZfcBJuxpROPVa(Lcoy;J)Lcpp;

    move-result-object p2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, p0, p1, p2}, Lapq;-><init>(Lapr;Lcpc;Lcpp;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop
.end method

.method public final cl()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop
.end method
