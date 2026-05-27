.class final Lfff;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field final synthetic a:Lnph;

.field final synthetic b:Lnou;


# direct methods
.method public constructor <init>(Lnph;Lnou;)V
    .locals 0

    iput-object p1, p0, Lfff;->a:Lnph;

    iput-object p2, p0, Lfff;->b:Lnou;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lfff;->a:Lnph;

    sget-object v0, Lmpx;->a:Lmpx;

    invoke-virtual {p1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lmqp;

    iget-object p1, p0, Lfff;->a:Lnph;

    iget-object v0, p0, Lfff;->b:Lnou;

    invoke-virtual {p1, v0}, Lnph;->f(Lnou;)Z

    return-void
.end method
