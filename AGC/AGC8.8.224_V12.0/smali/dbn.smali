.class public final synthetic Ldbn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ldbp;

.field public final synthetic b:Lklv;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Ldbp;Lklv;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldbn;->a:Ldbp;

    iput-object p2, p0, Ldbn;->b:Lklv;

    iput p3, p0, Ldbn;->d:I

    iput p4, p0, Ldbn;->e:I

    iput p5, p0, Ldbn;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Ldbn;->a:Ldbp;

    iget-object v1, p0, Ldbn;->b:Lklv;

    iget v2, p0, Ldbn;->d:I

    iget v3, p0, Ldbn;->e:I

    iget v4, p0, Ldbn;->c:I

    sget v5, Lcdz;->a:I

    iget-object v5, v0, Ldbp;->c:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    invoke-static {v6, v5}, Lcdz;->c(Landroid/content/Context;Landroid/app/Activity;)V

    const/4 v5, 0x5

    invoke-virtual/range {v0 .. v5}, Ldbp;->d(Lklv;IIII)V

    return-void
.end method
