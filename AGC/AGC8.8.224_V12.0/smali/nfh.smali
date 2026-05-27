.class public final synthetic Lnfh;
.super Ljava/lang/Object;

# interfaces
.implements Lnfk;


# instance fields
.field public final synthetic a:Lnfk;

.field public final synthetic b:Lnfk;


# direct methods
.method public synthetic constructor <init>(Lnfk;Lnfk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnfh;->a:Lnfk;

    iput-object p2, p0, Lnfh;->b:Lnfk;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lnfh;->a:Lnfk;

    iget-object v1, p0, Lnfh;->b:Lnfk;

    invoke-interface {v0, p1, p2, p3, p4}, Lnfk;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1, p1, p2, p3, p4}, Lnfk;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public final synthetic b(Lnfk;)Lnfk;
    .locals 0

    invoke-static {p0, p1}, Lndd;->i(Lnfk;Lnfk;)Lnfk;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/Comparator;
    .locals 0

    invoke-static {p0, p1, p2}, Lndd;->j(Lnfk;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method
