.class public final synthetic Lihf;
.super Ljava/lang/Object;

# interfaces
.implements Lioq;


# instance fields
.field public final synthetic a:Logd;

.field public final synthetic b:Lkbc;


# direct methods
.method public synthetic constructor <init>(Logd;Lkbc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lihf;->a:Logd;

    iput-object p2, p0, Lihf;->b:Lkbc;

    return-void
.end method


# virtual methods
.method public final a(Lios;)Lioo;
    .locals 3

    iget-object v0, p0, Lihf;->a:Logd;

    iget-object v1, p0, Lihf;->b:Lkbc;

    new-instance v2, Lihe;

    invoke-interface {p1}, Lios;->b()Llbd;

    move-result-object p1

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lihd;

    invoke-direct {v2, p1, v0, v1}, Lihe;-><init>(Llbd;Lihd;Lkbc;)V

    return-object v2
.end method
