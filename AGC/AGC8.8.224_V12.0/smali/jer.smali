.class public final Ljer;
.super Ljem;


# instance fields
.field public final a:Ljde;


# direct methods
.method public constructor <init>(Ljde;)V
    .locals 0

    invoke-direct {p0}, Ljem;-><init>()V

    iput-object p1, p0, Ljer;->a:Ljde;

    return-void
.end method


# virtual methods
.method public final b(Ljec;)V
    .locals 2

    iget-object v0, p0, Ljer;->a:Ljde;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljde;->g(ILjec;)V

    return-void
.end method

.method public final c(Ljec;)V
    .locals 2

    iget-object v0, p0, Ljer;->a:Ljde;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljde;->g(ILjec;)V

    return-void
.end method
