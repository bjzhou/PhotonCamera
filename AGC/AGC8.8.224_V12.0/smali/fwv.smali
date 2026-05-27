.class final Lfwv;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field final synthetic a:Lnph;

.field final synthetic b:Lgcy;

.field final synthetic c:Lfwx;


# direct methods
.method public constructor <init>(Lfwx;Lnph;Lgcy;)V
    .locals 0

    iput-object p1, p0, Lfwv;->c:Lfwx;

    iput-object p2, p0, Lfwv;->a:Lnph;

    iput-object p3, p0, Lfwv;->b:Lgcy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lfwv;->a:Lnph;

    invoke-virtual {v0, p1}, Lnph;->a(Ljava/lang/Throwable;)Z

    iget-object p1, p0, Lfwv;->b:Lgcy;

    invoke-interface {p1}, Lgcy;->close()V

    iget-object p1, p0, Lfwv;->c:Lfwx;

    invoke-virtual {p1}, Lfwx;->b()V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lfwv;->a:Lnph;

    invoke-virtual {v0, p1}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object p1, p0, Lfwv;->b:Lgcy;

    invoke-interface {p1}, Lgcy;->close()V

    iget-object p1, p0, Lfwv;->c:Lfwx;

    invoke-virtual {p1}, Lfwx;->b()V

    return-void
.end method
