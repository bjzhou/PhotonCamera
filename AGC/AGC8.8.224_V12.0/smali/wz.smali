.class final Lwz;
.super Lxb;


# instance fields
.field final synthetic a:Lxa;


# direct methods
.method public constructor <init>(Lxa;)V
    .locals 0

    iput-object p1, p0, Lwz;->a:Lxa;

    iget p1, p1, Lxa;->c:I

    invoke-direct {p0, p1}, Lxb;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lwz;->a:Lxa;

    invoke-virtual {v0, p1}, Lxa;->b(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final b(I)V
    .locals 1

    iget-object v0, p0, Lwz;->a:Lxa;

    invoke-virtual {v0, p1}, Lxa;->e(I)V

    return-void
.end method
