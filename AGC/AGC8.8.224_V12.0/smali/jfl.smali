.class public final Ljfl;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljfh;

.field public b:[Ljca;

.field public c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljfl;->d:Z

    const/4 v0, 0x0

    iput v0, p0, Ljfl;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ljfm;
    .locals 4

    iget-object v0, p0, Ljfl;->a:Ljfh;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "execute parameter required"

    invoke-static {v0, v1}, Ljhp;->T(ZLjava/lang/Object;)V

    new-instance v0, Ljfm;

    iget-object v1, p0, Ljfl;->b:[Ljca;

    iget-boolean v2, p0, Ljfl;->d:Z

    iget v3, p0, Ljfl;->c:I

    invoke-direct {v0, p0, v1, v2, v3}, Ljfm;-><init>(Ljfl;[Ljca;ZI)V

    return-object v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljfl;->d:Z

    return-void
.end method
