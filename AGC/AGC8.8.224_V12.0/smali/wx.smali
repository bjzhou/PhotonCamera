.class final Lwx;
.super Lxb;


# instance fields
.field final synthetic a:Lwy;


# direct methods
.method public constructor <init>(Lwy;)V
    .locals 0

    iput-object p1, p0, Lwx;->a:Lwy;

    iget p1, p1, Lxf;->d:I

    invoke-direct {p0, p1}, Lxb;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lwx;->a:Lwy;

    invoke-virtual {v0, p1}, Lxf;->g(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final b(I)V
    .locals 1

    iget-object v0, p0, Lwx;->a:Lwy;

    invoke-virtual {v0, p1}, Lxf;->e(I)Ljava/lang/Object;

    return-void
.end method
