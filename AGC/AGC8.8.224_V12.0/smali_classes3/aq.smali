.class final Laq;
.super Ljava/lang/Object;


# instance fields
.field public a:Lam;

.field public b:Lam;

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Lam;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laq;->a:Lam;

    iget-object v0, p1, Lam;->b:Lam;

    iput-object v0, p0, Laq;->b:Lam;

    invoke-virtual {p1}, Lam;->a()I

    move-result v0

    iput v0, p0, Laq;->c:I

    iget v0, p1, Lam;->h:I

    iput v0, p0, Laq;->e:I

    iget p1, p1, Lam;->e:I

    iput p1, p0, Laq;->d:I

    return-void
.end method
