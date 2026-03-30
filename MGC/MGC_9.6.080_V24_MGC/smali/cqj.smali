.class public final Lcqj;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lcqm;

.field public b:Lcou;

.field public final c:Lubo;

.field public final d:Lubo;

.field public final e:Lubo;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Lcqj;-><init>(Lcqm;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lcpe;->a:Lcpe;

    nop

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
.end method

.method public constructor <init>(Lcqm;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcqj;->c:Lubo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lcqj;->d:Lubo;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    new-instance p1, Lcqg;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lcqj;->a:Lcqm;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p1, p0}, Lcqh;-><init>(Lcqj;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1, p0}, Lcqg;-><init>(Lcqj;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    new-instance p1, Lcqh;

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

    :goto_9
    invoke-direct {p1, p0}, Lcqi;-><init>(Lcqj;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lcqj;->e:Lubo;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p1, Lcqi;

    nop

    goto/32 :goto_9

    nop

    nop
.end method


# virtual methods
.method public final a()Lcou;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lcqj;->b:Lcou;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    const-string v0, "SubcomposeLayoutState is not attached to SubcomposeLayout"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
