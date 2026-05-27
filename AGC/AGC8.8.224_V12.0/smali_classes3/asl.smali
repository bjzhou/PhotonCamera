.class final Lasl;
.super Lasg;


# instance fields
.field final a:Lasm;


# direct methods
.method public constructor <init>(Lasm;)V
    .locals 0

    invoke-direct {p0}, Lasg;-><init>()V

    iput-object p1, p0, Lasl;->a:Lasm;

    return-void
.end method


# virtual methods
.method public final a(Lasf;)V
    .locals 2

    iget-object v0, p0, Lasl;->a:Lasm;

    iget v1, v0, Lasm;->n:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lasm;->n:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lasm;->o:Z

    invoke-virtual {v0}, Lasf;->p()V

    :cond_0
    invoke-virtual {p1, p0}, Lasf;->y(Lase;)V

    return-void
.end method

.method public final e(Lasf;)V
    .locals 1

    iget-object p1, p0, Lasl;->a:Lasm;

    iget-boolean v0, p1, Lasm;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lasf;->t()V

    iget-object p1, p0, Lasl;->a:Lasm;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lasm;->o:Z

    :cond_0
    return-void
.end method
