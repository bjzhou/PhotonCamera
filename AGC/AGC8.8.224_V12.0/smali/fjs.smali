.class public final synthetic Lfjs;
.super Ljava/lang/Object;

# interfaces
.implements Ldsw;


# instance fields
.field public final synthetic a:Ldsw;


# direct methods
.method public synthetic constructor <init>(Ldsw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfjs;->a:Ldsw;

    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 1

    iget-object v0, p0, Lfjs;->a:Ldsw;

    check-cast v0, Ldsz;

    iget-boolean v0, v0, Ldsz;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
