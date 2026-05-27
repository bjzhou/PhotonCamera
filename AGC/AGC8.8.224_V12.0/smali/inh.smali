.class Linh;
.super Linf;


# instance fields
.field final synthetic a:Lini;


# direct methods
.method public constructor <init>(Lini;)V
    .locals 0

    iput-object p1, p0, Linh;->a:Lini;

    invoke-direct {p0}, Linf;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Linh;->a:Lini;

    iget-object v0, v0, Lini;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v0}, Lioe;->c()V

    return-void
.end method
