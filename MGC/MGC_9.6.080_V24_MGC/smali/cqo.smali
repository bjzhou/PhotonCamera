.class public final Lcqo;
.super Lcqu;
.source "PG"


# instance fields
.field public a:Lcqx;


# direct methods
.method public constructor <init>(Lcqx;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Lcqu;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcqo;->a:Lcqx;

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
.method public final a(Lcqq;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcqo;->a:Lcqx;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    if-ne p1, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    invoke-static {p1}, Lcnf;->b(Ljava/lang/String;)V

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lcqo;->a:Lcqx;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-interface {p0}, Lcqx;->e()Ljava/lang/Object;

    move-result-object p0

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

    :goto_7
    invoke-interface {v0}, Lcqx;->c()Lcqz;

    move-result-object v0

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

    :goto_8
    const-string p1, "Check failed."

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Lcqq;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcqo;->a:Lcqx;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    const/4 p0, 0x0

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

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    if-eq p1, p0, :cond_0

    nop

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0}, Lcqx;->c()Lcqz;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method
