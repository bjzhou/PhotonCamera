.class public final Lkkc;
.super Ljava/lang/Object;

# interfaces
.implements Ljzt;


# instance fields
.field public final a:Lmwn;

.field public final b:Lmwn;

.field public final c:Lmwn;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object p1

    iput-object p1, p0, Lkkc;->a:Lmwn;

    invoke-static {p2}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object p1

    iput-object p1, p0, Lkkc;->b:Lmwn;

    invoke-static {p3}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object p1

    iput-object p1, p0, Lkkc;->c:Lmwn;

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/Printer;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
