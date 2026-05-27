.class public final Lbbg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/app/Notification;

.field final synthetic c:I

.field final synthetic d:Landroidx/work/impl/foreground/SystemForegroundService;


# direct methods
.method public constructor <init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;I)V
    .locals 0

    iput-object p1, p0, Lbbg;->d:Landroidx/work/impl/foreground/SystemForegroundService;

    iput p2, p0, Lbbg;->a:I

    iput-object p3, p0, Lbbg;->b:Landroid/app/Notification;

    iput p4, p0, Lbbg;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lbbg;->d:Landroidx/work/impl/foreground/SystemForegroundService;

    iget v1, p0, Lbbg;->a:I

    iget-object v2, p0, Lbbg;->b:Landroid/app/Notification;

    iget v3, p0, Lbbg;->c:I

    invoke-static {v0, v1, v2, v3}, Lbbi;->a(Landroid/app/Service;ILandroid/app/Notification;I)V

    return-void
.end method
