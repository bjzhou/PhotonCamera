.class public final synthetic Lfnu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lfnu;->a:Z

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lfnu;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljws;->h:Ljws;

    goto :goto_0

    :cond_0
    sget-object v0, Ljws;->g:Ljws;

    :goto_0
    return-object v0
.end method
