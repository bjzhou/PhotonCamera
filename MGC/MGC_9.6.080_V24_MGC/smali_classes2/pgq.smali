.class public final Lpgq;
.super Lpuq;
.source "PG"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lpgv;

.field final synthetic c:Lpge;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lpgv;Lpge;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    nop

    nop

    goto/32 :goto_8

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
    iput-object p1, p0, Lpgq;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lpgq;->c:Lpge;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lpgq;->b:Lpgv;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p3, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p3, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lpgq;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1}, Lolx;->aF(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, p3, p3, p3}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final cJ()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Lpgq;->b:Lpgv;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0, p0}, Lpgv;->a(Lpge;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iget-object p0, p0, Lpgq;->c:Lpge;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final cV()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpgq;->c:Lpge;

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

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lpgq;->b:Lpgv;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-interface {v0, p0}, Lpgv;->a(Lpge;)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final dN()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpgq;->d:Ljava/lang/String;

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

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method
