.class final Lkjb;
.super Lkja;


# instance fields
.field private final a:Lkib;


# direct methods
.method public constructor <init>(Lkib;)V
    .locals 0

    invoke-direct {p0}, Lkja;-><init>()V

    iput-object p1, p0, Lkjb;->a:Lkib;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lkjb;->a:Lkib;

    invoke-static {v0, p1}, Lkof;->g(Lkib;Landroid/os/Handler;)V

    return-void
.end method

.method public final b(Lkhw;)V
    .locals 1

    iget-object v0, p0, Lkjb;->a:Lkib;

    invoke-interface {p1, v0}, Lkhw;->d(Lkib;)V

    return-void
.end method
