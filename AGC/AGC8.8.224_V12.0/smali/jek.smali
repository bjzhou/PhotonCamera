.class final Ljek;
.super Ljava/lang/Object;

# interfaces
.implements Ljon;


# instance fields
.field final synthetic a:Lkgd;

.field final synthetic b:Ligo;


# direct methods
.method public constructor <init>(Ligo;Lkgd;[B[B[B[B)V
    .locals 0

    iput-object p1, p0, Ljek;->b:Ligo;

    iput-object p2, p0, Ljek;->a:Lkgd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljot;)V
    .locals 1

    iget-object p1, p0, Ljek;->b:Ligo;

    iget-object p1, p1, Ligo;->a:Ljava/lang/Object;

    iget-object v0, p0, Ljek;->a:Lkgd;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
