.class public final Lntx;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lpcu;

.field public final b:Lntw;

.field public final c:Lntw;

.field public d:I

.field public e:J

.field public f:J

.field public g:Lnsz;

.field public final h:Lmjv;

.field final i:Ltkb;


# direct methods
.method public constructor <init>(Lmjv;Lpcu;)V
    .locals 0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p2, p1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    invoke-direct {p2, p1}, Lntw;-><init>(Lpcu;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    new-instance p2, Lntw;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lntx;->b:Lntw;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lntx;->h:Lmjv;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p1, Lsqd;->a:Lsqd;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lntx;->i:Ltkb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    const-string p1, "WearSessionLogger"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    new-instance p2, Lntw;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Ltkg;->m()Ltkb;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    invoke-direct {p2, p1}, Lntw;-><init>(Lpcu;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    iput-object p1, p0, Lntx;->a:Lpcu;

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

    nop

    :goto_e
    iput-object p2, p0, Lntx;->c:Lntw;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method
