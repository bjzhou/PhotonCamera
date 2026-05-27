.class public final synthetic Lnfi;
.super Ljava/lang/Object;

# interfaces
.implements Lnfk;


# instance fields
.field public final synthetic a:Ljava/util/function/ToLongBiFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/ToLongBiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnfi;->a:Ljava/util/function/ToLongBiFunction;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lnfi;->a:Ljava/util/function/ToLongBiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/ToLongBiFunction;->applyAsLong(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p1

    invoke-interface {v0, p3, p4}, Ljava/util/function/ToLongBiFunction;->applyAsLong(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p3

    cmp-long v0, p1, p3

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
