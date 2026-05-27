.class public final synthetic Leim;
.super Ljava/lang/Object;

# interfaces
.implements Lnal;


# instance fields
.field public final synthetic a:Leio;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Leio;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leim;->a:Leio;

    iput p2, p0, Leim;->b:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Leim;->a:Leio;

    iget v1, p0, Leim;->b:I

    iget-object v2, v0, Leio;->a:Landroid/content/Context;

    iget-object v0, v0, Leio;->f:Leik;

    invoke-virtual {v0}, Leik;->k()Z

    move-result v0

    invoke-static {v1, v2, v0}, Lfcr;->g(ILandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
