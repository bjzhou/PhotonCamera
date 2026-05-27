.class final Lmtk;
.super Lmtm;


# instance fields
.field final synthetic a:Lmtq;


# direct methods
.method public constructor <init>(Lmtq;)V
    .locals 0

    iput-object p1, p0, Lmtk;->a:Lmtq;

    invoke-direct {p0, p1}, Lmtm;-><init>(Lmtq;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmtk;->a:Lmtq;

    invoke-virtual {v0, p1}, Lmtq;->i(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
