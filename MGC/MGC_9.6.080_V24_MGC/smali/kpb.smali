.class public final Lkpb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;)V
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

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lkpb;->a:Ltxm;

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
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lkpb;->b()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final b()Ljava/util/Set;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lhmu;->a:Lhmo;

    nop

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

    nop

    :goto_1
    check-cast p0, Lkoq;

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

    :goto_2
    iget-object v0, v0, Lkdv;->a:Lj$/util/Optional;

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

    :goto_3
    check-cast v0, Lkdv;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Loyg;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lhdn;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lkpb;->a:Ltxm;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lhdn;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0}, Lkav;->m(Ljava/util/List;)Lkqa;

    move-result-object p0

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

    nop

    nop

    :goto_9
    new-instance v0, Loyg;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, v0}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    :goto_b
    return-object p0

    nop

    :goto_c
    invoke-virtual {p0}, Lkoq;->b()Lhdn;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p0, Lsbt;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method
