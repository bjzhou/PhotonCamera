.class public final synthetic Lerk;
.super Ljava/lang/Object;

# interfaces
.implements Libe;


# instance fields
.field public final synthetic a:Lert;


# direct methods
.method public synthetic constructor <init>(Lert;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lerk;->a:Lert;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lerk;->a:Lert;

    iget-object v0, v0, Lert;->j:Lgzm;

    sget-object v1, Lgzd;->A:Lgzr;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
