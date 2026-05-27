.class public Lhte;
.super Lhtd;


# instance fields
.field public final synthetic a:Lhtg;


# direct methods
.method public constructor <init>(Lhtg;)V
    .locals 0

    iput-object p1, p0, Lhte;->a:Lhtg;

    invoke-direct {p0}, Lhtd;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lfuz;Ljuf;)V
    .locals 1

    iget-object v0, p0, Lhte;->a:Lhtg;

    iput-object p1, v0, Lhtg;->d:Lfuz;

    new-instance p1, Lhbq;

    const/4 v0, 0x6

    invoke-direct {p1, p0, v0}, Lhbq;-><init>(Lhte;I)V

    invoke-virtual {p2, p1}, Ljuf;->d(Lkad;)V

    return-void
.end method
