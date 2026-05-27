.class public final synthetic Ldbg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ldbi;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ldbi;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldbg;->a:Ldbi;

    iput p2, p0, Ldbg;->b:I

    iput p3, p0, Ldbg;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Ldbg;->a:Ldbi;

    iget v3, p0, Ldbg;->b:I

    iget v4, p0, Ldbg;->c:I

    sget v1, Lcdz;->a:I

    iget-object v1, v0, Ldbi;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    invoke-static {v2, v1}, Lcdz;->c(Landroid/content/Context;Landroid/app/Activity;)V

    iget-object v1, v0, Ldbi;->e:Lkaq;

    invoke-static {v4}, Ldcb;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lmoz;->L(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hardware help dialog for unavailability of any cameras due to reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at stage "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Learn more button clicked"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v1, v0, Ldbi;->d:Lfbz;

    const/4 v2, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lfbz;->W(IIILklv;I)V

    return-void
.end method
