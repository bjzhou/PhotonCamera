.class final Lfyl;
.super Ljava/lang/Object;

# interfaces
.implements Ljzv;


# instance fields
.field final synthetic a:Lfym;


# direct methods
.method public constructor <init>(Lfym;)V
    .locals 0

    iput-object p1, p0, Lfyl;->a:Lfym;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    new-instance v0, Lfyi;

    iget-object v1, p0, Lfyl;->a:Lfym;

    iget-object v1, v1, Lfym;->c:Lfyk;

    invoke-direct {v0, v1, p1, p2}, Lfyi;-><init>(Lfyk;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
