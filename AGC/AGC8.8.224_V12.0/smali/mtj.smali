.class final Lmtj;
.super Lmtm;


# instance fields
.field final synthetic a:Lmtq;


# direct methods
.method public constructor <init>(Lmtq;)V
    .locals 0

    iput-object p1, p0, Lmtj;->a:Lmtq;

    invoke-direct {p0, p1}, Lmtm;-><init>(Lmtq;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(I)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lmto;

    iget-object v1, p0, Lmtj;->a:Lmtq;

    invoke-direct {v0, v1, p1}, Lmto;-><init>(Lmtq;I)V

    return-object v0
.end method
