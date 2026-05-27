.class final Lez;
.super Ley;


# instance fields
.field final synthetic a:Lfd;

.field public final b:Lva;


# direct methods
.method public constructor <init>(Lfd;Lva;[B[B)V
    .locals 0

    iput-object p1, p0, Lez;->a:Lfd;

    invoke-direct {p0, p1}, Ley;-><init>(Lfd;)V

    iput-object p2, p0, Lez;->b:Lva;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lez;->a:Lfd;

    invoke-virtual {v0}, Lfd;->K()V

    return-void
.end method
