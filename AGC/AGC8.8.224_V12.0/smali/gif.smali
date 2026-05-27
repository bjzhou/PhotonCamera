.class public final synthetic Lgif;
.super Ljava/lang/Object;

# interfaces
.implements Lgnj;


# instance fields
.field public final synthetic a:Lkad;


# direct methods
.method public synthetic constructor <init>(Lkad;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgif;->a:Lkad;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lgif;->a:Lkad;

    invoke-interface {v0}, Lkad;->close()V

    return-void
.end method
