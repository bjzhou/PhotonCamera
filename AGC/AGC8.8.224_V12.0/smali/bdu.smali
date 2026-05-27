.class public final Lbdu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lbej;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkForegroundRunnable"

    invoke-static {v0}, Laxq;->b(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lbej;->g()Lbej;

    move-result-object v0

    iput-object v0, p0, Lbdu;->a:Lbej;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbdu;->a:Lbej;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbej;->h(Ljava/lang/Object;)V

    return-void
.end method
