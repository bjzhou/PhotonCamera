.class final Lef;
.super Lee;
.source "PG"


# instance fields
.field final synthetic a:Lej;

.field public final b:Lhdu;


# direct methods
.method public constructor <init>(Lej;Lhdu;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lee;-><init>(Lej;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lef;->b:Lhdu;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-object p1, p0, Lef;->a:Lej;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/content/IntentFilter;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "android.intent.action.TIME_TICK"

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p0, Landroid/content/IntentFilter;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "android.intent.action.TIME_SET"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop
.end method

.method public final b()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lej;->K()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object p0, p0, Lef;->a:Lej;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method
