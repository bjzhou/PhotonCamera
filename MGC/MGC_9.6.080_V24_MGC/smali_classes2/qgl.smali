.class final Lqgl;
.super Lqfg;
.source "PG"


# instance fields
.field private final a:Lqgo;


# direct methods
.method public constructor <init>(Lqgo;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqgl;->a:Lqgo;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lqfg;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lqft;->a(Ljava/lang/Throwable;)Lqft;

    move-result-object p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    check-cast p1, Lqft;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lqgo;->j(Lqft;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lqgl;->a:Lqgo;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method
