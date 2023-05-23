<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="video-player-16-9" id="video-player-live" style="cursor: pointer;">
            <div data-shaka-player-container="" shaka-controls="true" class="shaka-video-container" style="cursor: none;">
                <video data-shaka-player="" autoplay="" id="video" style="width: 100%; height: 100%" class="shaka-video" src="blob:https://www.digisport.ro/115d2e71-d4bc-42a8-84db-dab970606971"></video>
                <canvas class="shaka-canvas-container"></canvas>
                <div class="shaka-controls-container">
                    <div class="shaka-scrim-container"></div>
                    <div class="shaka-server-side-ad-container">
                        <iframe src="https://imasdk.googleapis.com/js/core/dai_iframe3.573.0_en.html?origin=https%3A%2F%2Fwww.digisport.ro" allowfullscreen="" style="height: 100%; border: 0px; margin: 0px; padding: 0px; position: relative; width: 100%; color-scheme: light; display: none;"></iframe>
                    </div>
                    <div class="shaka-bottom-controls shaka-no-propagation">
                        <div class="shaka-ad-controls shaka-hidden">
                            <div class="shaka-ad-position shaka-hidden"><span class="shaka-ad-position-span"></span></div>
                            <div class="shaka-ad-counter"><span class="shaka-ad-counter-span"></span></div>
                        </div>
                        <div class="shaka-controls-button-panel shaka-show-controls-on-mouse-over">
                            <button type="button" class="shaka-small-play-button material-icons-round shaka-tooltip" aria-label="Pause">pause</button><div class="shaka-spacer" aria-hidden="true"></div>
                            <button type="button" class="shaka-mute-button material-icons-round shaka-tooltip" aria-label="Unmute">volume_off</button><div class="shaka-range-container shaka-volume-bar-container" style="background: linear-gradient(to right, rgb(255, 255, 255) 0%, rgba(255, 255, 255, 0.54) 0%, rgba(255, 255, 255, 0.54) 100%);">
                                <input class="shaka-range-element shaka-volume-bar" type="range" step="any" min="0" max="1" aria-label="Volume"></div>
                            <button type="button" class="shaka-fullscreen-button material-icons-round shaka-tooltip" aria-label="Full screen">fullscreen</button></div>
                    </div>
                </div>
                <div class="shaka-client-side-ad-container shaka-hidden"></div>
                <div class="shaka-spinner-container shaka-hidden">
                    <div class="shaka-spinner">
                        <svg class="shaka-spinner-svg" viewBox="0 0 30 30">
                            <circle class="shaka-spinner-path" cx="15" cy="15" r="14.5" fill="none" stroke-width="1" stroke-miterlimit="10"></circle></svg></div>
                </div>
                <div class="shaka-text-container" style="text-align: center; display: flex; flex-direction: column; align-items: center; justify-content: flex-end;"></div>
            </div>
            <div class="video" video-init="true"></div>
        </div>
    </form>
</body>
</html>
