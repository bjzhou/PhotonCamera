.class final Lazk;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Alarms"

    invoke-static {v0}, Laxq;->b(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lbbx;I)V
    .locals 3

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {p0, p1}, Lazl;->c(Landroid/content/Context;Lbbx;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x24000000

    invoke-static {p0, p2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Laxq;->a()Laxq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling existing alarm with (workSpecId, systemId) ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lbbx;J)V
    .locals 5

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->y()Lbbs;

    move-result-object v0

    invoke-static {v0, p2}, Lazc;->b(Lbbs;Lbbx;)Lbbr;

    move-result-object v1

    if-eqz v1, :cond_0

    iget p1, v1, Lbbr;->c:I

    invoke-static {p0, p2, p1}, Lazk;->a(Landroid/content/Context;Lbbx;I)V

    iget p1, v1, Lbbr;->c:I

    invoke-static {p0, p2, p1, p3, p4}, Lazk;->c(Landroid/content/Context;Lbbx;IJ)V

    return-void

    :cond_0
    new-instance v1, Lbkb;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lbkb;-><init>(Landroidx/work/impl/WorkDatabase;[B)V

    iget-object p1, v1, Lbkb;->a:Ljava/lang/Object;

    new-instance v3, Lbdj;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2, v2}, Lbdj;-><init>(Lbkb;I[B[B)V

    check-cast p1, Lapt;

    invoke-virtual {p1, v3}, Lapt;->d(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p2, p1}, Lazj;->b(Lbbx;I)Lbbr;

    move-result-object v1

    invoke-interface {v0, v1}, Lbbs;->a(Lbbr;)V

    invoke-static {p0, p2, p1, p3, p4}, Lazk;->c(Landroid/content/Context;Lbbx;IJ)V

    return-void
.end method

.method private static c(Landroid/content/Context;Lbbx;IJ)V
    .locals 2

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {p0, p1}, Lazl;->c(Landroid/content/Context;Lbbx;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0xc000000

    invoke-static {p0, p2, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-static {v0, p1, p3, p4, p0}, Lazj;->a(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method
