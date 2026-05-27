.class public final synthetic Lkhq;
.super Ljava/lang/Object;

# interfaces
.implements Ljzv;


# instance fields
.field public final synthetic a:Lkjt;


# direct methods
.method public synthetic constructor <init>(Lkjt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkhq;->a:Lkjt;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkhq;->a:Lkjt;

    check-cast p1, Lknb;

    check-cast p2, Lknb;

    invoke-virtual {v0}, Lkjt;->i()Z

    move-result v0

    invoke-static {p2, p1, v0}, Lkkh;->f(Lknb;Lknb;Z)Lkkh;

    move-result-object p1

    return-object p1
.end method
