.class Ljtf;
.super Ljsd;


# instance fields
.field private a:Ljed;


# direct methods
.method public constructor <init>(Ljed;)V
    .locals 0

    invoke-direct {p0}, Ljsd;-><init>()V

    iput-object p1, p0, Ljtf;->a:Ljed;

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ljtf;->a:Ljed;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljed;->c(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ljtf;->a:Ljed;

    :cond_0
    return-void
.end method
